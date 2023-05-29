package p034j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2651I;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.C2693e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2694f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U3 */
/* loaded from: classes2.dex */
public class C2851U3 extends AbstractC2876Z3 implements InterfaceC2694f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2851U3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2851U3(int i) {
        super(i);
    }

    @Override // p034j$.util.stream.AbstractC2876Z3, java.lang.Iterable, p034j$.lang.InterfaceC2601e
    /* renamed from: B */
    public InterfaceC2727s.InterfaceC2728a spliterator() {
        return new C2846T3(this, 0, this.f933c, 0, this.f932b);
    }

    @Override // p034j$.util.function.InterfaceC2694f
    public void accept(double d) {
        m464A();
        int i = this.f932b;
        this.f932b = i + 1;
        ((double[]) this.f868e)[i] = d;
    }

    @Override // p034j$.util.stream.AbstractC2876Z3
    /* renamed from: c */
    public Object mo463c(int i) {
        return new double[i];
    }

    @Override // p034j$.lang.InterfaceC2601e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2694f) {
            mo276g((InterfaceC2694f) consumer);
        } else if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2651I.m621f(spliterator());
    }

    @Override // p034j$.util.function.InterfaceC2694f
    /* renamed from: j */
    public InterfaceC2694f mo87j(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        return new C2693e(this, interfaceC2694f);
    }

    @Override // p034j$.util.stream.AbstractC2876Z3
    /* renamed from: t */
    protected void mo462t(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        InterfaceC2694f interfaceC2694f = (InterfaceC2694f) obj2;
        while (i < i2) {
            interfaceC2694f.accept(dArr[i]);
            i++;
        }
    }

    public String toString() {
        double[] dArr = (double[]) mo277e();
        return dArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f933c), Arrays.toString(dArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f933c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }

    @Override // p034j$.util.stream.AbstractC2876Z3
    /* renamed from: u */
    protected int mo461u(Object obj) {
        return ((double[]) obj).length;
    }

    @Override // p034j$.util.stream.AbstractC2876Z3
    /* renamed from: z */
    protected Object[] mo456z(int i) {
        return new double[i];
    }
}
