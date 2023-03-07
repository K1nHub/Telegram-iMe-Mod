package p034j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2411I;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.C2464p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2465q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Y3 */
/* loaded from: classes2.dex */
public class C2631Y3 extends AbstractC2636Z3 implements InterfaceC2465q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2631Y3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2631Y3(int i) {
        super(i);
    }

    @Override // p034j$.util.stream.AbstractC2636Z3, java.lang.Iterable, p034j$.lang.InterfaceC2361e
    /* renamed from: B */
    public InterfaceC2487s.InterfaceC2490c spliterator() {
        return new C2626X3(this, 0, this.f924c, 0, this.f923b);
    }

    @Override // p034j$.util.function.InterfaceC2465q
    public void accept(long j) {
        m479A();
        int i = this.f923b;
        this.f923b = i + 1;
        ((long[]) this.f859e)[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2636Z3
    /* renamed from: c */
    public Object mo478c(int i) {
        return new long[i];
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        return new C2464p(this, interfaceC2465q);
    }

    @Override // p034j$.lang.InterfaceC2361e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2465q) {
            mo291g((InterfaceC2465q) consumer);
        } else if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2411I.m635h(spliterator());
    }

    @Override // p034j$.util.stream.AbstractC2636Z3
    /* renamed from: t */
    protected void mo477t(Object obj, int i, int i2, Object obj2) {
        long[] jArr = (long[]) obj;
        InterfaceC2465q interfaceC2465q = (InterfaceC2465q) obj2;
        while (i < i2) {
            interfaceC2465q.accept(jArr[i]);
            i++;
        }
    }

    public String toString() {
        long[] jArr = (long[]) mo292e();
        return jArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f924c), Arrays.toString(jArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f924c), Arrays.toString(Arrays.copyOf(jArr, 200)));
    }

    @Override // p034j$.util.stream.AbstractC2636Z3
    /* renamed from: u */
    protected int mo476u(Object obj) {
        return ((long[]) obj).length;
    }

    @Override // p034j$.util.stream.AbstractC2636Z3
    /* renamed from: z */
    protected Object[] mo471z(int i) {
        return new long[i];
    }
}
