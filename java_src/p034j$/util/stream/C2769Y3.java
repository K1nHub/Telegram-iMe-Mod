package p034j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2549I;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.C2602p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2603q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Y3 */
/* loaded from: classes2.dex */
public class C2769Y3 extends AbstractC2774Z3 implements InterfaceC2603q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2769Y3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2769Y3(int i) {
        super(i);
    }

    @Override // p034j$.util.stream.AbstractC2774Z3, java.lang.Iterable, p034j$.lang.InterfaceC2499e
    /* renamed from: B */
    public InterfaceC2625s.InterfaceC2628c spliterator() {
        return new C2764X3(this, 0, this.f930c, 0, this.f929b);
    }

    @Override // p034j$.util.function.InterfaceC2603q
    public void accept(long j) {
        m478A();
        int i = this.f929b;
        this.f929b = i + 1;
        ((long[]) this.f865e)[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2774Z3
    /* renamed from: c */
    public Object mo477c(int i) {
        return new long[i];
    }

    @Override // p034j$.util.function.InterfaceC2603q
    /* renamed from: f */
    public InterfaceC2603q mo154f(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        return new C2602p(this, interfaceC2603q);
    }

    @Override // p034j$.lang.InterfaceC2499e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2603q) {
            mo290g((InterfaceC2603q) consumer);
        } else if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2549I.m634h(spliterator());
    }

    @Override // p034j$.util.stream.AbstractC2774Z3
    /* renamed from: t */
    protected void mo476t(Object obj, int i, int i2, Object obj2) {
        long[] jArr = (long[]) obj;
        InterfaceC2603q interfaceC2603q = (InterfaceC2603q) obj2;
        while (i < i2) {
            interfaceC2603q.accept(jArr[i]);
            i++;
        }
    }

    public String toString() {
        long[] jArr = (long[]) mo291e();
        return jArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f930c), Arrays.toString(jArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f930c), Arrays.toString(Arrays.copyOf(jArr, 200)));
    }

    @Override // p034j$.util.stream.AbstractC2774Z3
    /* renamed from: u */
    protected int mo475u(Object obj) {
        return ((long[]) obj).length;
    }

    @Override // p034j$.util.stream.AbstractC2774Z3
    /* renamed from: z */
    protected Object[] mo470z(int i) {
        return new long[i];
    }
}
