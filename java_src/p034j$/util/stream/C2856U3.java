package p034j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2656I;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.C2698e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2699f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U3 */
/* loaded from: classes2.dex */
public class C2856U3 extends AbstractC2881Z3 implements InterfaceC2699f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2856U3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2856U3(int i) {
        super(i);
    }

    @Override // p034j$.util.stream.AbstractC2881Z3, java.lang.Iterable, p034j$.lang.InterfaceC2606e
    /* renamed from: B */
    public InterfaceC2732s.InterfaceC2733a spliterator() {
        return new C2851T3(this, 0, this.f933c, 0, this.f932b);
    }

    @Override // p034j$.util.function.InterfaceC2699f
    public void accept(double d) {
        m464A();
        int i = this.f932b;
        this.f932b = i + 1;
        ((double[]) this.f868e)[i] = d;
    }

    @Override // p034j$.util.stream.AbstractC2881Z3
    /* renamed from: c */
    public Object mo463c(int i) {
        return new double[i];
    }

    @Override // p034j$.lang.InterfaceC2606e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2699f) {
            mo276g((InterfaceC2699f) consumer);
        } else if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2656I.m621f(spliterator());
    }

    @Override // p034j$.util.function.InterfaceC2699f
    /* renamed from: j */
    public InterfaceC2699f mo87j(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        return new C2698e(this, interfaceC2699f);
    }

    @Override // p034j$.util.stream.AbstractC2881Z3
    /* renamed from: t */
    protected void mo462t(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        InterfaceC2699f interfaceC2699f = (InterfaceC2699f) obj2;
        while (i < i2) {
            interfaceC2699f.accept(dArr[i]);
            i++;
        }
    }

    public String toString() {
        double[] dArr = (double[]) mo277e();
        return dArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f933c), Arrays.toString(dArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f933c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }

    @Override // p034j$.util.stream.AbstractC2881Z3
    /* renamed from: u */
    protected int mo461u(Object obj) {
        return ((double[]) obj).length;
    }

    @Override // p034j$.util.stream.AbstractC2881Z3
    /* renamed from: z */
    protected Object[] mo456z(int i) {
        return new double[i];
    }
}
