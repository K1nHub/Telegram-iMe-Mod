package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2916I;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.C2958e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U3 */
/* loaded from: classes2.dex */
public class C3116U3 extends AbstractC3141Z3 implements InterfaceC2959f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3116U3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3116U3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC3141Z3, java.lang.Iterable, p033j$.lang.InterfaceC2866e
    /* renamed from: B */
    public InterfaceC2992s.InterfaceC2993a spliterator() {
        return new C3111T3(this, 0, this.f1028c, 0, this.f1027b);
    }

    @Override // p033j$.util.function.InterfaceC2959f
    public void accept(double d) {
        m482A();
        int i = this.f1027b;
        this.f1027b = i + 1;
        ((double[]) this.f963e)[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3141Z3
    /* renamed from: c */
    public Object mo481c(int i) {
        return new double[i];
    }

    @Override // p033j$.lang.InterfaceC2866e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2959f) {
            mo294g((InterfaceC2959f) consumer);
        } else if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2916I.m639f(spliterator());
    }

    @Override // p033j$.util.function.InterfaceC2959f
    /* renamed from: j */
    public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        return new C2958e(this, interfaceC2959f);
    }

    @Override // p033j$.util.stream.AbstractC3141Z3
    /* renamed from: t */
    protected void mo480t(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        InterfaceC2959f interfaceC2959f = (InterfaceC2959f) obj2;
        while (i < i2) {
            interfaceC2959f.accept(dArr[i]);
            i++;
        }
    }

    public String toString() {
        double[] dArr = (double[]) mo295e();
        return dArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1028c), Arrays.toString(dArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1028c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC3141Z3
    /* renamed from: u */
    protected int mo479u(Object obj) {
        return ((double[]) obj).length;
    }

    @Override // p033j$.util.stream.AbstractC3141Z3
    /* renamed from: z */
    protected Object[] mo474z(int i) {
        return new double[i];
    }
}
