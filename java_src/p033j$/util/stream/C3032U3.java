package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2832I;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.C2874e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U3 */
/* loaded from: classes2.dex */
public class C3032U3 extends AbstractC3057Z3 implements InterfaceC2875f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3032U3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3032U3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC3057Z3, java.lang.Iterable, p033j$.lang.InterfaceC2782e
    /* renamed from: B */
    public InterfaceC2908s.InterfaceC2909a spliterator() {
        return new C3027T3(this, 0, this.f1019c, 0, this.f1018b);
    }

    @Override // p033j$.util.function.InterfaceC2875f
    public void accept(double d) {
        m482A();
        int i = this.f1018b;
        this.f1018b = i + 1;
        ((double[]) this.f954e)[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3057Z3
    /* renamed from: c */
    public Object mo481c(int i) {
        return new double[i];
    }

    @Override // p033j$.lang.InterfaceC2782e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2875f) {
            mo294g((InterfaceC2875f) consumer);
        } else if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2832I.m639f(spliterator());
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        return new C2874e(this, interfaceC2875f);
    }

    @Override // p033j$.util.stream.AbstractC3057Z3
    /* renamed from: t */
    protected void mo480t(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        InterfaceC2875f interfaceC2875f = (InterfaceC2875f) obj2;
        while (i < i2) {
            interfaceC2875f.accept(dArr[i]);
            i++;
        }
    }

    public String toString() {
        double[] dArr = (double[]) mo295e();
        return dArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1019c), Arrays.toString(dArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1019c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC3057Z3
    /* renamed from: u */
    protected int mo479u(Object obj) {
        return ((double[]) obj).length;
    }

    @Override // p033j$.util.stream.AbstractC3057Z3
    /* renamed from: z */
    protected Object[] mo474z(int i) {
        return new double[i];
    }
}
