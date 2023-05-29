package p034j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2656I;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.C2709p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2710q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Y3 */
/* loaded from: classes2.dex */
public class C2876Y3 extends AbstractC2881Z3 implements InterfaceC2710q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2876Y3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2876Y3(int i) {
        super(i);
    }

    @Override // p034j$.util.stream.AbstractC2881Z3, java.lang.Iterable, p034j$.lang.InterfaceC2606e
    /* renamed from: B */
    public InterfaceC2732s.InterfaceC2735c spliterator() {
        return new C2871X3(this, 0, this.f933c, 0, this.f932b);
    }

    @Override // p034j$.util.function.InterfaceC2710q
    public void accept(long j) {
        m464A();
        int i = this.f932b;
        this.f932b = i + 1;
        ((long[]) this.f868e)[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2881Z3
    /* renamed from: c */
    public Object mo463c(int i) {
        return new long[i];
    }

    @Override // p034j$.util.function.InterfaceC2710q
    /* renamed from: f */
    public InterfaceC2710q mo140f(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        return new C2709p(this, interfaceC2710q);
    }

    @Override // p034j$.lang.InterfaceC2606e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2710q) {
            mo276g((InterfaceC2710q) consumer);
        } else if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2656I.m619h(spliterator());
    }

    @Override // p034j$.util.stream.AbstractC2881Z3
    /* renamed from: t */
    protected void mo462t(Object obj, int i, int i2, Object obj2) {
        long[] jArr = (long[]) obj;
        InterfaceC2710q interfaceC2710q = (InterfaceC2710q) obj2;
        while (i < i2) {
            interfaceC2710q.accept(jArr[i]);
            i++;
        }
    }

    public String toString() {
        long[] jArr = (long[]) mo277e();
        return jArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f933c), Arrays.toString(jArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f933c), Arrays.toString(Arrays.copyOf(jArr, 200)));
    }

    @Override // p034j$.util.stream.AbstractC2881Z3
    /* renamed from: u */
    protected int mo461u(Object obj) {
        return ((long[]) obj).length;
    }

    @Override // p034j$.util.stream.AbstractC2881Z3
    /* renamed from: z */
    protected Object[] mo456z(int i) {
        return new long[i];
    }
}
