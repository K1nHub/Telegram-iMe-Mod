package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2777I;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.C2830p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2831q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Y3 */
/* loaded from: classes2.dex */
public class C2997Y3 extends AbstractC3002Z3 implements InterfaceC2831q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2997Y3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2997Y3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC3002Z3, java.lang.Iterable, p033j$.lang.InterfaceC2727e
    /* renamed from: B */
    public InterfaceC2853s.InterfaceC2856c spliterator() {
        return new C2992X3(this, 0, this.f1015c, 0, this.f1014b);
    }

    @Override // p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        m464A();
        int i = this.f1014b;
        this.f1014b = i + 1;
        ((long[]) this.f950e)[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3002Z3
    /* renamed from: c */
    public Object mo463c(int i) {
        return new long[i];
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public InterfaceC2831q mo140f(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2830p(this, interfaceC2831q);
    }

    @Override // p033j$.lang.InterfaceC2727e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2831q) {
            mo276g((InterfaceC2831q) consumer);
        } else if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2777I.m619h(spliterator());
    }

    @Override // p033j$.util.stream.AbstractC3002Z3
    /* renamed from: t */
    protected void mo462t(Object obj, int i, int i2, Object obj2) {
        long[] jArr = (long[]) obj;
        InterfaceC2831q interfaceC2831q = (InterfaceC2831q) obj2;
        while (i < i2) {
            interfaceC2831q.accept(jArr[i]);
            i++;
        }
    }

    public String toString() {
        long[] jArr = (long[]) mo277e();
        return jArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f1015c), Arrays.toString(jArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f1015c), Arrays.toString(Arrays.copyOf(jArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC3002Z3
    /* renamed from: u */
    protected int mo461u(Object obj) {
        return ((long[]) obj).length;
    }

    @Override // p033j$.util.stream.AbstractC3002Z3
    /* renamed from: z */
    protected Object[] mo456z(int i) {
        return new long[i];
    }
}
