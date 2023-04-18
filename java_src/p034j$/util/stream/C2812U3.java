package p034j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2612I;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.C2654e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2655f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U3 */
/* loaded from: classes2.dex */
public class C2812U3 extends AbstractC2837Z3 implements InterfaceC2655f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2812U3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2812U3(int i) {
        super(i);
    }

    @Override // p034j$.util.stream.AbstractC2837Z3, java.lang.Iterable, p034j$.lang.InterfaceC2562e
    /* renamed from: B */
    public InterfaceC2688s.InterfaceC2689a spliterator() {
        return new C2807T3(this, 0, this.f930c, 0, this.f929b);
    }

    @Override // p034j$.util.function.InterfaceC2655f
    public void accept(double d) {
        m459A();
        int i = this.f929b;
        this.f929b = i + 1;
        ((double[]) this.f865e)[i] = d;
    }

    @Override // p034j$.util.stream.AbstractC2837Z3
    /* renamed from: c */
    public Object mo458c(int i) {
        return new double[i];
    }

    @Override // p034j$.lang.InterfaceC2562e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2655f) {
            mo271g((InterfaceC2655f) consumer);
        } else if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2612I.m617f(spliterator());
    }

    @Override // p034j$.util.function.InterfaceC2655f
    /* renamed from: j */
    public InterfaceC2655f mo82j(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        return new C2654e(this, interfaceC2655f);
    }

    @Override // p034j$.util.stream.AbstractC2837Z3
    /* renamed from: t */
    protected void mo457t(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        InterfaceC2655f interfaceC2655f = (InterfaceC2655f) obj2;
        while (i < i2) {
            interfaceC2655f.accept(dArr[i]);
            i++;
        }
    }

    public String toString() {
        double[] dArr = (double[]) mo272e();
        return dArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f930c), Arrays.toString(dArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f930c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }

    @Override // p034j$.util.stream.AbstractC2837Z3
    /* renamed from: u */
    protected int mo456u(Object obj) {
        return ((double[]) obj).length;
    }

    @Override // p034j$.util.stream.AbstractC2837Z3
    /* renamed from: z */
    protected Object[] mo451z(int i) {
        return new double[i];
    }
}
