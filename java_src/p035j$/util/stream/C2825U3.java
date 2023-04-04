package p035j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p035j$.util.AbstractC2625I;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.C2667e;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2668f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U3 */
/* loaded from: classes2.dex */
public class C2825U3 extends AbstractC2850Z3 implements InterfaceC2668f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2825U3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2825U3(int i) {
        super(i);
    }

    @Override // p035j$.util.stream.AbstractC2850Z3, java.lang.Iterable, p035j$.lang.InterfaceC2575e
    /* renamed from: B */
    public InterfaceC2701s.InterfaceC2702a spliterator() {
        return new C2820T3(this, 0, this.f935c, 0, this.f934b);
    }

    @Override // p035j$.util.function.InterfaceC2668f
    public void accept(double d) {
        m473A();
        int i = this.f934b;
        this.f934b = i + 1;
        ((double[]) this.f870e)[i] = d;
    }

    @Override // p035j$.util.stream.AbstractC2850Z3
    /* renamed from: c */
    public Object mo472c(int i) {
        return new double[i];
    }

    @Override // p035j$.lang.InterfaceC2575e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2668f) {
            mo285g((InterfaceC2668f) consumer);
        } else if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2625I.m631f(spliterator());
    }

    @Override // p035j$.util.function.InterfaceC2668f
    /* renamed from: j */
    public InterfaceC2668f mo96j(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        return new C2667e(this, interfaceC2668f);
    }

    @Override // p035j$.util.stream.AbstractC2850Z3
    /* renamed from: t */
    protected void mo471t(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        InterfaceC2668f interfaceC2668f = (InterfaceC2668f) obj2;
        while (i < i2) {
            interfaceC2668f.accept(dArr[i]);
            i++;
        }
    }

    public String toString() {
        double[] dArr = (double[]) mo286e();
        return dArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f935c), Arrays.toString(dArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f935c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }

    @Override // p035j$.util.stream.AbstractC2850Z3
    /* renamed from: u */
    protected int mo470u(Object obj) {
        return ((double[]) obj).length;
    }

    @Override // p035j$.util.stream.AbstractC2850Z3
    /* renamed from: z */
    protected Object[] mo465z(int i) {
        return new double[i];
    }
}
