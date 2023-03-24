package p034j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2549I;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.C2591e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U3 */
/* loaded from: classes2.dex */
public class C2749U3 extends AbstractC2774Z3 implements InterfaceC2592f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2749U3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2749U3(int i) {
        super(i);
    }

    @Override // p034j$.util.stream.AbstractC2774Z3, java.lang.Iterable, p034j$.lang.InterfaceC2499e
    /* renamed from: B */
    public InterfaceC2625s.InterfaceC2626a spliterator() {
        return new C2744T3(this, 0, this.f930c, 0, this.f929b);
    }

    @Override // p034j$.util.function.InterfaceC2592f
    public void accept(double d) {
        m478A();
        int i = this.f929b;
        this.f929b = i + 1;
        ((double[]) this.f865e)[i] = d;
    }

    @Override // p034j$.util.stream.AbstractC2774Z3
    /* renamed from: c */
    public Object mo477c(int i) {
        return new double[i];
    }

    @Override // p034j$.lang.InterfaceC2499e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2592f) {
            mo290g((InterfaceC2592f) consumer);
        } else if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2549I.m636f(spliterator());
    }

    @Override // p034j$.util.function.InterfaceC2592f
    /* renamed from: j */
    public InterfaceC2592f mo101j(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        return new C2591e(this, interfaceC2592f);
    }

    @Override // p034j$.util.stream.AbstractC2774Z3
    /* renamed from: t */
    protected void mo476t(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        InterfaceC2592f interfaceC2592f = (InterfaceC2592f) obj2;
        while (i < i2) {
            interfaceC2592f.accept(dArr[i]);
            i++;
        }
    }

    public String toString() {
        double[] dArr = (double[]) mo291e();
        return dArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f930c), Arrays.toString(dArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f930c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }

    @Override // p034j$.util.stream.AbstractC2774Z3
    /* renamed from: u */
    protected int mo475u(Object obj) {
        return ((double[]) obj).length;
    }

    @Override // p034j$.util.stream.AbstractC2774Z3
    /* renamed from: z */
    protected Object[] mo470z(int i) {
        return new double[i];
    }
}
