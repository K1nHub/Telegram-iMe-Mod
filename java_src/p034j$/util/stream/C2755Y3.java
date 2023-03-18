package p034j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2535I;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.C2588p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2589q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Y3 */
/* loaded from: classes2.dex */
public class C2755Y3 extends AbstractC2760Z3 implements InterfaceC2589q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2755Y3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2755Y3(int i) {
        super(i);
    }

    @Override // p034j$.util.stream.AbstractC2760Z3, java.lang.Iterable, p034j$.lang.InterfaceC2485e
    /* renamed from: B */
    public InterfaceC2611s.InterfaceC2614c spliterator() {
        return new C2750X3(this, 0, this.f929c, 0, this.f928b);
    }

    @Override // p034j$.util.function.InterfaceC2589q
    public void accept(long j) {
        m479A();
        int i = this.f928b;
        this.f928b = i + 1;
        ((long[]) this.f864e)[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2760Z3
    /* renamed from: c */
    public Object mo478c(int i) {
        return new long[i];
    }

    @Override // p034j$.util.function.InterfaceC2589q
    /* renamed from: f */
    public InterfaceC2589q mo155f(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        return new C2588p(this, interfaceC2589q);
    }

    @Override // p034j$.lang.InterfaceC2485e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2589q) {
            mo291g((InterfaceC2589q) consumer);
        } else if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2535I.m635h(spliterator());
    }

    @Override // p034j$.util.stream.AbstractC2760Z3
    /* renamed from: t */
    protected void mo477t(Object obj, int i, int i2, Object obj2) {
        long[] jArr = (long[]) obj;
        InterfaceC2589q interfaceC2589q = (InterfaceC2589q) obj2;
        while (i < i2) {
            interfaceC2589q.accept(jArr[i]);
            i++;
        }
    }

    public String toString() {
        long[] jArr = (long[]) mo292e();
        return jArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f929c), Arrays.toString(jArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f929c), Arrays.toString(Arrays.copyOf(jArr, 200)));
    }

    @Override // p034j$.util.stream.AbstractC2760Z3
    /* renamed from: u */
    protected int mo476u(Object obj) {
        return ((long[]) obj).length;
    }

    @Override // p034j$.util.stream.AbstractC2760Z3
    /* renamed from: z */
    protected Object[] mo471z(int i) {
        return new long[i];
    }
}
