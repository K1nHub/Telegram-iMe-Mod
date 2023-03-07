package p034j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2411I;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.C2453e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2454f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U3 */
/* loaded from: classes2.dex */
public class C2611U3 extends AbstractC2636Z3 implements InterfaceC2454f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2611U3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2611U3(int i) {
        super(i);
    }

    @Override // p034j$.util.stream.AbstractC2636Z3, java.lang.Iterable, p034j$.lang.InterfaceC2361e
    /* renamed from: B */
    public InterfaceC2487s.InterfaceC2488a spliterator() {
        return new C2606T3(this, 0, this.f924c, 0, this.f923b);
    }

    @Override // p034j$.util.function.InterfaceC2454f
    public void accept(double d) {
        m479A();
        int i = this.f923b;
        this.f923b = i + 1;
        ((double[]) this.f859e)[i] = d;
    }

    @Override // p034j$.util.stream.AbstractC2636Z3
    /* renamed from: c */
    public Object mo478c(int i) {
        return new double[i];
    }

    @Override // p034j$.lang.InterfaceC2361e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2454f) {
            mo291g((InterfaceC2454f) consumer);
        } else if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2411I.m637f(spliterator());
    }

    @Override // p034j$.util.function.InterfaceC2454f
    /* renamed from: j */
    public InterfaceC2454f mo102j(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        return new C2453e(this, interfaceC2454f);
    }

    @Override // p034j$.util.stream.AbstractC2636Z3
    /* renamed from: t */
    protected void mo477t(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        InterfaceC2454f interfaceC2454f = (InterfaceC2454f) obj2;
        while (i < i2) {
            interfaceC2454f.accept(dArr[i]);
            i++;
        }
    }

    public String toString() {
        double[] dArr = (double[]) mo292e();
        return dArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f924c), Arrays.toString(dArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f924c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }

    @Override // p034j$.util.stream.AbstractC2636Z3
    /* renamed from: u */
    protected int mo476u(Object obj) {
        return ((double[]) obj).length;
    }

    @Override // p034j$.util.stream.AbstractC2636Z3
    /* renamed from: z */
    protected Object[] mo471z(int i) {
        return new double[i];
    }
}
