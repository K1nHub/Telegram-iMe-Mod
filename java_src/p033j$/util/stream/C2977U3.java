package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2777I;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U3 */
/* loaded from: classes2.dex */
public class C2977U3 extends AbstractC3002Z3 implements InterfaceC2820f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2977U3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2977U3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC3002Z3, java.lang.Iterable, p033j$.lang.InterfaceC2727e
    /* renamed from: B */
    public InterfaceC2853s.InterfaceC2854a spliterator() {
        return new C2972T3(this, 0, this.f1015c, 0, this.f1014b);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    public void accept(double d) {
        m464A();
        int i = this.f1014b;
        this.f1014b = i + 1;
        ((double[]) this.f950e)[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3002Z3
    /* renamed from: c */
    public Object mo463c(int i) {
        return new double[i];
    }

    @Override // p033j$.lang.InterfaceC2727e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2820f) {
            mo276g((InterfaceC2820f) consumer);
        } else if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2777I.m621f(spliterator());
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo87j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }

    @Override // p033j$.util.stream.AbstractC3002Z3
    /* renamed from: t */
    protected void mo462t(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        InterfaceC2820f interfaceC2820f = (InterfaceC2820f) obj2;
        while (i < i2) {
            interfaceC2820f.accept(dArr[i]);
            i++;
        }
    }

    public String toString() {
        double[] dArr = (double[]) mo277e();
        return dArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1015c), Arrays.toString(dArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1015c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC3002Z3
    /* renamed from: u */
    protected int mo461u(Object obj) {
        return ((double[]) obj).length;
    }

    @Override // p033j$.util.stream.AbstractC3002Z3
    /* renamed from: z */
    protected Object[] mo456z(int i) {
        return new double[i];
    }
}
